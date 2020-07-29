# Extract raw text from auto-generated captions from Microsoft Stream
A simple `.sh` script to extract auto-generated captions `.vtt` file from a video recording in Microsoft Teams/Microsoft Stream. 

## Instructions
- Download the `.vtt` file from your recording. In Microsoft Stream, locate the video you want the captions for, go to _Update Video Details_, then under _Options_ you can download the captions file.
- Copy the contents `scrape-vtt.sh` file to your machine and update permissions to allow execution `chmod u+x scrape-vtt.sh` 
- Run `./scrape-vtt.sh $CAPTIONS_FILE &> output.txt`
