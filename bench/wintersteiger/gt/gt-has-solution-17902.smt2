(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8940354395093350614587279778788797557353973388671875p877 {+ 4026377672230259 877 (1.90851e+264)}
; Y = 1.087834436913778457522994358441792428493499755859375p-401 {+ 395571137355190 -401 (2.10637e-121)}
; 1.8940354395093350614587279778788797557353973388671875p877 > 1.087834436913778457522994358441792428493499755859375p-401 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101100 #b1110010011011111100000011010111000101000010101110011)))
(assert (= y (fp #b0 #b01001101110 #b0001011001111100010100010101001000000001110110110110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
