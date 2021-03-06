(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00101000 #b10000101001000000101100)))
;; x should be Float32(0x9442902C [Rational(-3187723, 324518553658426726783156020576256), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x84D9F917)))
;; z should be Float32(0x84D9F917 [Rational(-14285079, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x84D9F917)))
(check-sat)
(exit)
