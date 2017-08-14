(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC991B654)))
;; x should be Float32(0xC991B654 [Rational(-2387349, 2), -1193674.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 2847867.0 4.0))))
;; w should be Float32(0x492DD1EC [Rational(2847867, 4), 711966.750000])

(assert (distinct x w))
(check-sat)
(exit)
