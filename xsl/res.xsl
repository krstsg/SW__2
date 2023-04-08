<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
            <head>
				<style type="text/css">
					table.tfmt {
					    border: 1px ;
					}

					td.colfmt {
						text-align: center;
                        border: 1px;
						border-collapse:collapse;
						border:1px solid #597777;
					}

					th {
					    background-color: #2E9AFE;
					    color: white;
					}

				</style>
			</head>

			<body>
				<table class="tfmt">
					<tr>
						<th style="width:350px">Product Name:</th>
                        <th style="width:250px">Raiting:</th>
                        <th style="width:250px">Review count:</th>
						<th style="width:250px">Old Price:</th>
						<th style="width:250px">New Price:</th>
						<th style="width:250px">Discount:</th>
					</tr>

					<xsl:for-each select="products/product">

						<tr>
							<td class="colfmt">
								<xsl:value-of select="name" />
							</td>
                            <td class="colfmt">
								<xsl:value-of select="rating" />
							</td>
                            <td class="colfmt">
								<xsl:value-of select="review_count" />
							</td>
							<td class="colfmt">
								<xsl:value-of select="price_old" />
							</td>
							<td class="colfmt">
								<xsl:value-of select="price_new" />
							</td>
							<td class="colfmt">
								<xsl:value-of select="discount" />
							</td>
						</tr>

					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>