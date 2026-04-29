(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.50300331157084610111951405997388064861297607421875p-370 {+ 2265325526556588 -370 (6.24973e-112)}
; Y = -1.10224820666721345929772724048234522342681884765625p394 {- 460484985445764 394 (-4.44731e+118)}
; 1.50300331157084610111951405997388064861297607421875p-370 > -1.10224820666721345929772724048234522342681884765625p394 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001101 #b1000000011000100110100110011010011111001111110101100)))
(assert (= y (fp #b1 #b10110001001 #b0001101000101100111100000011111110110101110110000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
