import BookCatCard from "./bookCatCard";

export default function CardSection(){
  const items1 = "Novel"
  const items2 = "Mathamatics"
  const items3 = "Science"


  return (

    <>

    <div className="flex">

    

   
      

      
    <BookCatCard items={items1}/>
    <BookCatCard items={items2}/>
    <BookCatCard items={items3}/>
    <BookCatCard items={items3}/>



    </div>
    
    <div className="flex">

    

   
      

      
    <BookCatCard items={items1}/>
    <BookCatCard items={items2}/>
    <BookCatCard items={items3}/>
    <BookCatCard items={items3}/>



    </div>


    
    
    </>




  )
}