(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00424F3F)))
;; x should be Float32(0x00424F3F [Rational(4345663, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00010110 #b10010100011001110111101)))
;; y should be Float32(0x8B4A33BD [Rational(-13251517, 340282366920938463463374607431768211456), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x0B4A33BF)))
(check-sat)
(exit)
