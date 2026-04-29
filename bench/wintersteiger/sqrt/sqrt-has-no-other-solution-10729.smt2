(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7381457203433650082757822019630111753940582275390625p619 {+ 3324312791083505 619 (3.78141e+186)}
; 1.7381457203433650082757822019630111753940582275390625p619 S == 1.8644815474245728381674780393950641155242919921875p309
; [HW: 1.8644815474245728381674780393950641155242919921875p309] 

; mpf : + 3893278774849976 309
; mpfd: + 3893278774849976 309 (1.94458e+093) class: Pos. norm. non-zero
; hwf : + 3893278774849976 309 (1.94458e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101010 #b1011110011110111000111100011000010001110100111110001)))
(assert (= r (fp #b0 #b10100110100 #b1101110101001110101010011010011000101111000110111000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
