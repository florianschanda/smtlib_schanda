(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.520527016074651793786642883787862956523895263671875p371 {+ 2344245275630078 371 (7.31345e+111)}
; 1.520527016074651793786642883787862956523895263671875p371 | == 1.520527016074651793786642883787862956523895263671875p371
; [HW: 1.520527016074651793786642883787862956523895263671875p371] 

; mpf : + 2344245275630078 371
; mpfd: + 2344245275630078 371 (7.31345e+111) class: Pos. norm. non-zero
; hwf : + 2344245275630078 371 (7.31345e+111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110010 #b1000010101000001010000100010111010111001100111111110)))
(assert (= r (fp #b0 #b10101110010 #b1000010101000001010000100010111010111001100111111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
