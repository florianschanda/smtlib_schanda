(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11000010 #b10111000010110111001110)))
;; x should be Float32(0x615C2DCE [Rational(253849016987063156736), 253849016987063156736.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (_ +oo 8 24)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
