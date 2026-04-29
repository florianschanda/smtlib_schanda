(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5206498181397989366558931578765623271465301513671875p31 {+ 2344798326964915 31 (3.26557e+009)}
; 1.5206498181397989366558931578765623271465301513671875p31 | == 1.5206498181397989366558931578765623271465301513671875p31
; [HW: 1.5206498181397989366558931578765623271465301513671875p31] 

; mpf : + 2344798326964915 31
; mpfd: + 2344798326964915 31 (3.26557e+009) class: Pos. norm. non-zero
; hwf : + 2344798326964915 31 (3.26557e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011110 #b1000010101001001010011100111010110010100001010110011)))
(assert (= r (fp #b0 #b10000011110 #b1000010101001001010011100111010110010100001010110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
