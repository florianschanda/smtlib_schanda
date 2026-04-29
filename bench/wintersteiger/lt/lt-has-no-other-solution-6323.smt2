(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.82571983773095336545111422310583293437957763671875p952 {- 3718711553517548 952 (-6.95008e+286)}
; Y = 1.918752603487355212763532108510844409465789794921875p-293 {+ 4137693882711326 -293 (1.20567e-088)}
; -1.82571983773095336545111422310583293437957763671875p952 < 1.918752603487355212763532108510844409465789794921875p-293 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110111 #b1101001101100010011000000001001010110110011111101100)))
(assert (= y (fp #b0 #b01011011010 #b1110101100110011010111101110000100010111110100011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
