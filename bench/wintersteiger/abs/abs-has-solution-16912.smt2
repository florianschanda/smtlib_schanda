(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6528292816720504543326342172804288566112518310546875p180 {- 2940081709674795 180 (-2.53295e+054)}
; -1.6528292816720504543326342172804288566112518310546875p180 | == 1.6528292816720504543326342172804288566112518310546875p180
; [HW: 1.6528292816720504543326342172804288566112518310546875p180] 

; mpf : + 2940081709674795 180
; mpfd: + 2940081709674795 180 (2.53295e+054) class: Pos. norm. non-zero
; hwf : + 2940081709674795 180 (2.53295e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110011 #b1010011100011111110100011101111010100111000100101011)))
(assert (= r (fp #b0 #b10010110011 #b1010011100011111110100011101111010100111000100101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
