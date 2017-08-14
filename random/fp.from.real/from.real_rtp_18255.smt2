(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10101010110010000001111)))
;; x should be Float32(0x4AD5640F [Rational(13984783, 2), 6992391.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 111878267.0 16.0))))
;; w should be Float32(0x4AD56410 [Rational(6992392), 6992392.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
