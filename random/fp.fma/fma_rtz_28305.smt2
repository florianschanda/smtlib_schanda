(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x073AD859)))
;; y should be Float32(0x073AD859 [Rational(12245081, 87112285931760246646623899502532662132736), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x807FFFFF)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
