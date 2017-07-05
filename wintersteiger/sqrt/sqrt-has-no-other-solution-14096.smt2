(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.328396239675327716867059280048124492168426513671875p442 {+ 1478965182631678 442 (1.50864e+133)}
; 1.328396239675327716867059280048124492168426513671875p442 S == 1.1525607314477304132793733515427447855472564697265625p221
; [HW: 1.1525607314477304132793733515427447855472564697265625p221] 

; mpf : + 687072453299369 221
; mpfd: + 687072453299369 221 (3.88412e+066) class: Pos. norm. non-zero
; hwf : + 687072453299369 221 (3.88412e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111001 #b0101010000010001110001101010010110001000111011111110)))
(assert (= r (fp #b0 #b10011011100 #b0010011100001110001110000101100000111000110010101001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
