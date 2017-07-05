(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4889869643656694631062009648303501307964324951171875p947 {- 2202201510506259 947 (-1.77132e+285)}
; Y = -0.98946981826771462920078192837536334991455078125p-1022 {- 4456175904844832 -1023 (-2.20164e-308)}
; -1.4889869643656694631062009648303501307964324951171875p947 > -0.98946981826771462920078192837536334991455078125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110010 #b0111110100101110001111111110110000011110111100010011)))
(assert (= y (fp #b1 #b00000000000 #b1111110101001101111001001101110111010110110000100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
