(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11010001 #b01000111101100100000001)))
;; x should be Float32(0xE8A3D901 [Rational(-6189990017834729443688448), -6189990017834729443688448.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007FFFFF)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x007FFFFF)))
(check-sat)
(exit)
