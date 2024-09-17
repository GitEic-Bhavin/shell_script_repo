function fruit () {
    local fruits=("apple" "orange" "banana" "kivi")
    for fruit in ${fruits[@]}
    do
      echo $fruit
    done

}
fruit