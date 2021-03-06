% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post-meme.R
\name{meme_tweet}
\alias{meme_tweet}
\title{Posts a meme to Twitter}
\usage{
meme_tweet(meme,
  tweet_text = "It's dangerous to meme alone. Here take this.",
  tag_rstatsmemes = FALSE, token = NULL)
}
\arguments{
\item{meme}{an external pointer of class 'magick-image'}

\item{tweet_text}{The text that you want to post along with your meme}

\item{tag_rstatsmemes}{adds two hashtags and tags the "rstatsmemes" account}

\item{token}{Every user should have their own Oauth (Twitter API) token. By
default \code{token = rtweet::get_token()}, which looks for a saved
Twitter token via environment variables (which is what \code{\link[rtweet:create_token]{rtweet::create_token()}}
sets up by default during initial token creation). For instruction on how
to create a Twitter token see the tokens vignette, i.e.,
\code{vignettes("auth", "rtweet")} or see \code{?tokens}. See \code{\link[rtweet:get_token]{rtweet::get_token()}}.}
}
\description{
Pipe your meme directly into this function to post your meme on Twitter. Make sure to have \code{rtweet} installed!
}
\section{How to share your meme on Twitter}{

\describe{
\item{First}{Authenticate your Twitter account, i.e. create a token)}
\item{Then}{Create meme of your liking}
\item{Finally}{Post meme to Twitter}
}
}

\examples{
\dontrun{
meme_get("OprahGiveaway") \%>\%
  meme_text_bottom("EVERYONE GETS R MEMES!!!", size = 36) \%>\%
  meme_tweet(tweet_text = "It's dangerous to meme alone. Here take this.",
  tag_rstatsmemes = T)
}

}
\references{
Kearney, M. W. (2018). rtweet: Collecting Twitter Data. R package version 0.6.7 Retrieved from
\url{https://cran.r-project.org/package=rtweet}
}
