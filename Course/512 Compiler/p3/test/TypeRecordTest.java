import static org.junit.Assert.*;

import org.junit.Test;

import type.*;



public class TypeRecordTest {
	@Test
	public void TestBasicTypeRecordEqual(){
		assertEquals(TypeRecord.intType,TypeRecord.intType);
		assertEquals(TypeRecord.boolType,TypeRecord.boolType);
		assertEquals(TypeRecord.strType,TypeRecord.strType);
		
	}
	
	@Test
	public void TestArrayTypeRecordEqual(){
		
		TypeRecord array1 = TypeRecord.arrayType(2, TypeRecord.intType);
		TypeRecord array2 = TypeRecord.arrayType(2, TypeRecord.intType);
		TypeRecord array3 = TypeRecord.arrayType(2, TypeRecord.boolType);
		TypeRecord array4 = TypeRecord.arrayType(3, TypeRecord.boolType);
		
		assertEquals(array1,array2);
		assertFalse(array1.equals(array3));
		assertFalse(array1.equals(array4));
		
		TypeRecord array5 = TypeRecord.arrayType(3, array1);
		TypeRecord array6 = TypeRecord.arrayType(3, array1);
		assertEquals(array5,array6);
		
		TypeRecord array7 = TypeRecord.arrayType(3, TypeRecord.arrayType(2, TypeRecord.intType));
		assertEquals(array5,array7);
		
		TypeRecord array8 = TypeRecord.arrayType(3, array7);
		assertFalse(array8.equals(array7));
	}
	
	@Test
	public void testArraySize() throws Exception {
		TypeRecord array1 = TypeRecord.arrayType(2, TypeRecord.intType);
		TypeRecord array2 = TypeRecord.arrayType(3, array1);
		TypeRecord array3 = TypeRecord.arrayType(4, array2);
		assertEquals(2,TypeRecord.arraySize(array1));
		assertEquals(2*3,TypeRecord.arraySize(array2));
		assertEquals(2*3*4,TypeRecord.arraySize(array3));
		System.out.println("array 1: " + array1);
		System.out.println("array 2: " + array2);
		System.out.println("array 3: " + array3);
	}
}
