(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.39053838160375420329728513024747371673583984375p197 {- 1758828509864544 197 (-2.79314e+059)}
; Y = 1.8519750911159149620033304017852060496807098388671875p925 {+ 3836954702878579 925 (5.25268e+278)}
; -1.39053838160375420329728513024747371673583984375p197 < 1.8519750911159149620033304017852060496807098388671875p925 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011000100 #b0110001111111010010100101100100011010010001001100000)))
(assert (= y (fp #b0 #b11110011100 #b1101101000011011000010100010000101011001011101110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
