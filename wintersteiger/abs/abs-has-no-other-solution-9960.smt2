(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9487407148718076665971921102027408778667449951171875p755 {+ 4272748329967891 755 (3.69318e+227)}
; 1.9487407148718076665971921102027408778667449951171875p755 | == 1.9487407148718076665971921102027408778667449951171875p755
; [HW: 1.9487407148718076665971921102027408778667449951171875p755] 

; mpf : + 4272748329967891 755
; mpfd: + 4272748329967891 755 (3.69318e+227) class: Pos. norm. non-zero
; hwf : + 4272748329967891 755 (3.69318e+227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110010 #b1111001011100000101010111110011011000010000100010011)))
(assert (= r (fp #b0 #b11011110010 #b1111001011100000101010111110011011000010000100010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
