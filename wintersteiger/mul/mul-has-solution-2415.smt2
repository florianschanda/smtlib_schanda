(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.75319283130358538613791097304783761501312255859375p-652 {- 3392078954396956 -652 (-9.3815e-197)}
; Y = 1.50367918597718475126612247549928724765777587890625p512 {+ 2268369394281124 512 (2.0161e+154)}
; -1.75319283130358538613791097304783761501312255859375p-652 * 1.50367918597718475126612247549928724765777587890625p512 == -1.31811978471780566479765184340067207813262939453125p-139
; [HW: -1.31811978471780566479765184340067207813262939453125p-139] 

; mpf : - 1432684143914292 -139
; mpfd: - 1432684143914292 -139 (-1.89141e-042) class: Neg. norm. non-zero
; hwf : - 1432684143914292 -139 (-1.89141e-042) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110011 #b1100000011010001001111101101001000000111110100011100)))
(assert (= y (fp #b0 #b10111111111 #b1000000011110001000111100111111101110010101010100100)))
(assert (= r (fp #b1 #b01101110100 #b0101000101110000010011000101011110010010110100110100)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
