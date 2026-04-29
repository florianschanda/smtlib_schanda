(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00010101 #b10101111001001000011100)))
;; x should be Float32(0x0AD7921C [Rational(3531911, 170141183460469231731687303715884105728), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 5651058293.0 272225893536750770770699685945414569164800.0))))
;; w should be Float32(0x0AD7921D [Rational(14127645, 680564733841876926926749214863536422912), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
