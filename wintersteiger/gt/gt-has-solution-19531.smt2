(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7194431425271081703698428100324235856533050537109375p-570 {- 3240083868599343 -570 (-4.44929e-172)}
; Y = -1.4083085349335267011383621138520538806915283203125p-9 {- 1838858165778824 -9 (-0.0027506)}
; -1.7194431425271081703698428100324235856533050537109375p-570 > -1.4083085349335267011383621138520538806915283203125p-9 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000101 #b1011100000101101011011010000000001111100010000101111)))
(assert (= y (fp #b1 #b01111110110 #b0110100010000110111010000111110000110111100110001000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
