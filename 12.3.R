#Google AI Studio API Key

Sys.setenv(GEMENI_API_KEY = "")

install.packages("ellmer") #just install once
library(ellmer) #every time

gemini <- chat_google_gemini()


# Chat with the LLM in RStudio
live_console(gemini) #connects R Studio to google gemini
  # bkgrd package that doesn't allow gemini to run without it

  # add a turn to the chat directly
gemini$chat("what are some ways gemini can help me learn R?")
        # google hasn't verified this bkgrd package so can't link/connect R to gemini

gemini2 <- chat_google_gemini(system_prompt = "you are my R tutor. BRIEFLY explain concepts in just a few bullet points. if asked for code, give simple tidyverse responses.")

gemini2$chat("how can you help me learn R?")

  # previous prompts & responses are stored in chat object
gemini2$get_turns() #prints whole chat
gemini2$get_turns()[[1]] # supposed to print out first prompt

  # look at image
gemini2$chat("describe this image",
             content_image_file("gapminder.png")) #normally gives a description of the image
gemini2$chat("relate it to the grammar of graphics") #expect to tell the geoms (aes, color, x, y, etc.)


