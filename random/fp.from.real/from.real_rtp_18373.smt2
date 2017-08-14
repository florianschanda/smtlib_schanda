(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x26ED90BA)))
;; x should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 919036373343412200015688501593.0 557518629963265578538392956816209037649510400.0))))
;; w should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
