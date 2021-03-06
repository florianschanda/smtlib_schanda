(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (inclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b01001101 #b11011011001000010111010)))
;; x should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 7784541.0 4722366482869645213696.0))))
;; w should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
