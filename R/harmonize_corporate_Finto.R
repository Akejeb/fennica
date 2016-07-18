harmonize_corporate_Finto <- function (x) {

  # Split by semicolon, and select only the first part
  # This behaviour might change later, but now we'll stick with just
  # one publisher per library item
  x <- gsub("([^;]*);.*", "\\1", as.character(x))

  xorig <- x
  x <- xuniq <- unique(xorig)  

  node_count <- length(x)
  
  # prepare year
  year <- data.frame(year_from=integer(node_count),
       	             year_till=integer(node_count),
		     stringsAsFactors=FALSE)
  year[any(year)==0] <- NA

  # Get the indices with years in brackets
  # Case: Stupid Hege Inc. (1975-2016)
  inds <- grep("\\([^)]*[0-9]{4}[-][0-9]{4}", x)
  year$year_from[inds] <- as.integer(gsub(".*\\([^)]*([0-9]{4})[-][0-9]{4}.*", "\\1", x[inds]))
  year$year_till[inds] <- as.integer(gsub(".*\\([^)]*[0-9]{4}[-]([0-9]{4}).*", "\\1", x[inds]))

  # Case: Stupid Hege Inc. (1975)
  inds <- grep("\\([^)]*[0-9]{4}", x)
  inds <- intersect(which(is.na(year$year_from)), inds)
  year$year_from[inds] <- year$year_till[inds] <- as.numeric(gsub(".*\\([^)]*([0-9]{4}).*", "\\1", x[inds]))
  
  # Get the town/city/village in brackets
  town <- character(node_count)
  town[town==0] <- NA
  
  inds <- grep("\\([^)]*([[:upper:]][[:lower:]]+), ?[0-9]{4}", x)
  town[inds] <- gsub(".*\\([^)]*([[:upper:]][[:lower:]]+), ?[0-9]{4}.*", "\\1", x[inds])
  
  # There was one instance of the word 'leski' in brackets -> remove the brackets, never mind the missing genitive
  x <- gsub("\\(leski\\)", "leski", x)
  
  # Now that everything relevant has been collected from the brackets, we can remove the brackets
  # Fennica uses Finto data, which is very consistent: no relevant data will be missing
  x <- gsub("(.*) ?\\([^)]*\\)(.*)", "\\1\\2", x)
  
  # Final touch
  x <- remove_endings(x , c(" ", "[.]", ","))

  # Since Finto data is implicit about the preferred company name, we
  # won't touch it any more Just return the values
  df <- cbind.data.frame(
			 name = x,
			 town = town,
			 year_from = year$year_from,
			 year_till = year$year_till,
			 stringsAsFactors = FALSE)

  # Back to original indices, then unique again;
  # reduces number of unique cases further
  df <- df[match(xorig, xuniq),]
  df$orig <- xorig

  df

}