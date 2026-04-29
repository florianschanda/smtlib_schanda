(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.449563239014565851903171278536319732666015625p77 {+ 2024652835705472 77 (2.19052e+023)}
; Y = 1.846029431862682645970608064089901745319366455078125p634 {+ 3810177834081250 634 (1.316e+191)}
; 1.449563239014565851903171278536319732666015625p77 < 1.846029431862682645970608064089901745319366455078125p634 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001100 #b0111001100010110100100111001000100001101001010000000)))
(assert (= y (fp #b0 #b11001111001 #b1101100010010101011000101000010101001101101111100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
