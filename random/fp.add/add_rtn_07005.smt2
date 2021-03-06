(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00010101 #b11101010110101010011100)))
;; y should be Float32(0x8AF56A9C [Rational(-4020903, 170141183460469231731687303715884105728), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (= result (fp #b1 #b00010101 #b11101010110101010100100)))
(check-sat)
(exit)
