(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1448450597320027899428396267467178404331207275390625p980 {+ 652324157035505 980 (1.16988e+295)}
; Y = -1.94666936344041463513576672994531691074371337890625p-294 {- 4263419792433316 -294 (-6.11608e-089)}
; 1.1448450597320027899428396267467178404331207275390625p980 = -1.94666936344041463513576672994531691074371337890625p-294 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010011 #b0010010100010100100100001101101010001001001111110001)))
(assert (= y (fp #b1 #b01011011001 #b1111001001011000111011000110010000011010000010100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
