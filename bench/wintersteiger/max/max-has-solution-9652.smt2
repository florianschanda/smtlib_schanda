(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.00211839167752270185474117170087993144989013671875p-718 {+ 9540387969516 -718 (7.26745e-217)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.00211839167752270185474117170087993144989013671875p-718 M -oo == 1.00211839167752270185474117170087993144989013671875p-718
; [HW: 1.00211839167752270185474117170087993144989013671875p-718] 

; mpf : + 9540387969516 -718
; mpfd: + 9540387969516 -718 (7.26745e-217) class: Pos. norm. non-zero
; hwf : + 9540387969516 -718 (7.26745e-217) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110001 #b0000000010001010110101001011011011111001100111101100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b00100110001 #b0000000010001010110101001011011011111001100111101100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
