(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9528661C)))
;; x should be Float32(0x9528661C [Rational(-2759047, 81129638414606681695789005144064), -0.000000])

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
