(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0074724815549966905336987110786139965057373046875p482 {- 33653065146616 482 (-1.25803e+145)}
; -1.0074724815549966905336987110786139965057373046875p482 | == 1.0074724815549966905336987110786139965057373046875p482
; [HW: 1.0074724815549966905336987110786139965057373046875p482] 

; mpf : + 33653065146616 482
; mpfd: + 33653065146616 482 (1.25803e+145) class: Pos. norm. non-zero
; hwf : + 33653065146616 482 (1.25803e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100001 #b0000000111101001101101110110111111100110000011111000)))
(assert (= r (fp #b0 #b10111100001 #b0000000111101001101101110110111111100110000011111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
