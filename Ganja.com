import os

# HTML content
html_content = f"""
<!DOCTYPE html>
<html lang="sq">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Urime</title>
    <style>
        body {{
            margin: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f9f9f9;
        }}
        img {{
            width: 100%;
            height: auto;
            display: block;
        }}
        .text {{
            padding: 30px 20px;
            font-size: 1.5em;
            color: #333;
        }}
    </style>
</head>
<body>
    <img src="optimized_background.jpg" alt="Background image">
    <div class="text">
        Urime, ju gjetet njeriun e fatit.<br>
        Shpërndajeni këtë për të pasur fat gjithë jetën.
    </div>
</body>
</html>
"""

# Write files to a temporary folder for download or hosting
site_dir = "/mnt/data/simple_webpage"
os.makedirs(site_dir, exist_ok=True)

# Save HTML and image
html_path = os.path.join(site_dir, "index.html")
with open(html_path, "w", encoding="utf-8") as f:
    f.write(html_content)

# Copy the image to the same folder
optimized_img_dest = os.path.join(site_dir, "optimized_background.jpg")
os.system(f"cp '{optimized_image_path}' '{optimized_img_dest}'")

site_dir
