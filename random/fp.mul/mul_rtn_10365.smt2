(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001011010111111101111)))
;; x should be Float32(0x8005AFEF [Rational(-372719, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x70F357B3)))
;; y should be Float32(0x70F357B3 [Rational(602487033891950064838515884032), 602487033891950064838515884032.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (= result ((_ to_fp 8 24) #xAFACFE55)))
(check-sat)
(exit)
