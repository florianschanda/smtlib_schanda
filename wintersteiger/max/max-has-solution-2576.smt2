(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7278657559473007410133504890836775302886962890625p-39 {- 3278015947260008 -39 (-3.14297e-012)}
; Y = 1.29333959258197861430517150438390672206878662109375p406 {+ 1321084079845212 406 (2.13742e+122)}
; -1.7278657559473007410133504890836775302886962890625p-39 M 1.29333959258197861430517150438390672206878662109375p406 == 1.29333959258197861430517150438390672206878662109375p406
; [HW: 1.29333959258197861430517150438390672206878662109375p406] 

; mpf : + 1321084079845212 406
; mpfd: + 1321084079845212 406 (2.13742e+122) class: Pos. norm. non-zero
; hwf : + 1321084079845212 406 (2.13742e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011000 #b1011101001010101011010010000000110101100000001101000)))
(assert (= y (fp #b0 #b10110010101 #b0100101100011000010011011011010011000010111101011100)))
(assert (= r (fp #b0 #b10110010101 #b0100101100011000010011011011010011000010111101011100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
