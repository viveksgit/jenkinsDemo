package dataProviders;
	import java.io.BufferedReader;
	import java.io.FileNotFoundException;
	import java.io.FileReader;
	import java.io.IOException;
	import java.util.Arrays;
	import java.util.List;
	import com.google.gson.Gson;
	import managers.FileReaderManager;
	import testDataTypes.Unity;
	
public class JsonDataReader {
	private final String unityFilePath = FileReaderManager.getInstance().getConfigReader().getTestDataResourcePath() + "Unity.json";
	private List<Unity> unityList;
	
	public JsonDataReader(){
		unityList = getUnityData();
	}
	
	private List<Unity> getUnityData() {
		Gson gson = new Gson();
		BufferedReader bufferReader = null;
		try {
			bufferReader = new BufferedReader(new FileReader(unityFilePath));
			Unity[] customers = gson.fromJson(bufferReader, Unity[].class);
			return Arrays.asList(customers);
		}catch(FileNotFoundException e) {
			throw new RuntimeException("Json file not found at path : " + unityFilePath);
		}finally {
			try { if(bufferReader != null) bufferReader.close();}
			catch (IOException ignore) {}
		}
	}
		
	public final Unity getOpportunityByName(String opprotunityName){
			 return unityList.stream().filter(x -> x.opportunityName.equalsIgnoreCase(opprotunityName)).findAny().get();
	}
}