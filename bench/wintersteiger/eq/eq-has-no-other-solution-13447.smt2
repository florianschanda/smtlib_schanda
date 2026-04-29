(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.29762771128707310452909950981847941875457763671875p-557 {- 1340396049647596 -557 (-2.7507e-168)}
; Y = -1.057456748068584584387963332119397819042205810546875p-954 {- 258762189191598 -954 (-6.94459e-288)}
; -1.29762771128707310452909950981847941875457763671875p-557 = -1.057456748068584584387963332119397819042205810546875p-954 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010010 #b0100110000110001010101000110011001011100011111101100)))
(assert (= y (fp #b1 #b00001000101 #b0000111010110101011111000100010111100011100110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
