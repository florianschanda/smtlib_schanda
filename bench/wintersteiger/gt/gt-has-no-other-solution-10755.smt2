(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.787474000566116938415461845579557120800018310546875p85 {- 3546467615513518 85 (-6.91496e+025)}
; Y = -1.3889298288137281733867212096811272203922271728515625p77 {- 1751584232118777 77 (-2.09889e+023)}
; -1.787474000566116938415461845579557120800018310546875p85 > -1.3889298288137281733867212096811272203922271728515625p77 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010100 #b1100100110010111111001010110011011100001101110101110)))
(assert (= y (fp #b1 #b10001001100 #b0110001110010000111001111011111100110001100111111001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
