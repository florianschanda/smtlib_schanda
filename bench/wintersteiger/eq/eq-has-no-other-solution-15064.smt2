(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1040830095931812859788578862207941710948944091796875p386 {- 468748203219451 386 (-1.74012e+116)}
; Y = 1.519697553541584422731602899148128926753997802734375p-828 {+ 2340509708475238 -828 (8.49026e-250)}
; -1.1040830095931812859788578862207941710948944091796875p386 = 1.519697553541584422731602899148128926753997802734375p-828 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000001 #b0001101010100101001011110010001001000101100111111011)))
(assert (= y (fp #b0 #b00011000011 #b1000010100001010111001100001110001000101101101100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
