(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0073A48C)))
;; x should be Float32(0x0073A48C [Rational(1894691, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x42900CBB)))
;; z should be Float32(0x42900CBB [Rational(9440443, 131072), 72.024864])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
