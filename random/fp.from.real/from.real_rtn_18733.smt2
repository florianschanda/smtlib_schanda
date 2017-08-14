(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00110001100010110100111)))
;; x should be Float32(0x4A98C5A7 [Rational(10012071, 2), 5006035.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 5006038.0)))
;; w should be Float32(0x4A98C5AC [Rational(5006038), 5006038.000000])

(assert (distinct x w))
(check-sat)
(exit)
