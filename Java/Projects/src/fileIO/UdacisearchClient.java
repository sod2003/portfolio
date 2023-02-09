package fileIO;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.Duration;
import java.time.Instant;
import java.time.ZoneId;

public final class UdacisearchClient implements Serializable {
  private static final long serialVersionUID = 1L;
  private String name = "";
  private long id = 0;
  private int quarterlyBudget = 0;
  private int numEmployees = 0;
  private Instant contractStart = Instant.EPOCH;
  private Duration contractLength = Duration.ZERO;
  private ZoneId timeZone = ZoneId.of("UTC");
  private String billingAddress = "";

  public UdacisearchClient(
      String name,
      long id,
      int quarterlyBudget,
      int numEmployees,
      Instant contractStart,
      Duration contractLength,
      ZoneId timeZone,
      String billingAddress) {
    this.name = name;
    this.id = id;
    this.quarterlyBudget = quarterlyBudget;
    this.numEmployees = numEmployees;
    this.contractStart = contractStart;
    this.contractLength = contractLength;
    this.timeZone = timeZone;
    this.billingAddress = billingAddress;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public int getQuarterlyBudget() {
    return quarterlyBudget;
  }

  public void setQuarterlyBudget(int quarterlyBudget) {
    this.quarterlyBudget = quarterlyBudget;
  }

  public int getNumEmployees() {
    return numEmployees;
  }

  public void setNumEmployees(int numEmployees) {
    this.numEmployees = numEmployees;
  }

  public Instant getContractStart() {
    return contractStart;
  }

  public void setContractStart(Instant contractStart) {
    this.contractStart = contractStart;
  }

  public Duration getContractLength() {
    return contractLength;
  }

  public void setContractLength(Duration contractLength) {
    this.contractLength = contractLength;
  }

  public ZoneId getTimeZone() {
    return timeZone;
  }

  public void setTimeZone(ZoneId timeZone) {
    this.timeZone = timeZone;
  }

  public String getBillingAddress() {
    return billingAddress;
  }

  public void setBillingAddress(String billingAddress) {
    this.billingAddress = billingAddress;
  }

  @Override
  public String toString() {
    return "UdacisearchClient{" +
        "name='" + getName() + '\'' +
        ", id=" + getId() +
        ", quarterlyBudget=" + getQuarterlyBudget() +
        ", numEmployees=" + getNumEmployees() +
        ", contractStart=" + getContractStart() +
        ", contractLength=" + getContractLength() +
        ", timeZone=" + getTimeZone() +
        ", billingAddress='" + getBillingAddress() + '\'' +
        '}';
  }
  
  public static void main(String[] args) throws Exception {
	    if (args.length != 1) {
	      System.out.println("Usage: Main [file path]");
	      return;
	    }
	    
	    UdacisearchClient client = 
	    		new UdacisearchClient(
	            "CatFacts LLC",
	            17,
	            8000,
	            5,
	            Instant.now(),
	            Duration.ofDays(180),
	            ZoneId.of("America/Los_Angeles"),
	            "555 Meowmers Ln, Riverside, CA 92501");

	    Path outputPath = Path.of(args[0]);

	    try (var out = new ObjectOutputStream(Files.newOutputStream(outputPath))) {
	        out.writeObject(client);
	      }
	    
	    try (var in = new ObjectInputStream(Files.newInputStream(outputPath))) {
	    	UdacisearchClient deserialized = (UdacisearchClient) in.readObject();
	        System.out.println(deserialized);
	      }
  }
}
