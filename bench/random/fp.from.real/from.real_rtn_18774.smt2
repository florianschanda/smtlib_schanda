(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10011110110100001001011)))
;; x should be Float32(0x4ACF684B [Rational(13592651, 2), 6796325.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 14410541.0 16.0))))
;; w should be Float32(0x495BE32D [Rational(14410541, 16), 900658.812500])

(assert (not (distinct x w)))
(check-sat)
(exit)
