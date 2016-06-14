package ecommunicate.ibeacon.service.webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;


@Path("/offer")
public class OfferQueryRequest {
	
	
	@GET
	@Path("/get")
	public Response getOffer() {

		System.out.println("in offer query request");
		return Response.status(200).build();

	}


}
