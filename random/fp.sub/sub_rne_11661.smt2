(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807E86BF)))
;; x should be Float32(0x807E86BF [Rational(-8292031, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCACF135B)))
;; y should be Float32(0xCACF135B [Rational(-13570907, 2), -6785453.500000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (= result ((_ to_fp 8 24) #x4ACF135B)))
(check-sat)
(exit)
