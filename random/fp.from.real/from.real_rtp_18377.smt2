(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x26ED90BA)))
;; x should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 19461354241.0 11805916207174113034240000.0))))
;; w should be Float32(0x26ED90BC [Rational(3892271, 2361183241434822606848), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
