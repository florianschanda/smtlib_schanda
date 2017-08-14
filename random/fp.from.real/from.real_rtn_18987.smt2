(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA74005E)))
;; x should be Float32(0xCA74005E [Rational(-7995439, 2), -3997719.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 174183849.0 64.0))))
;; w should be Float32(0x4A261D5A [Rational(5443245, 2), 2721622.500000])

(assert (distinct x w))
(check-sat)
(exit)
