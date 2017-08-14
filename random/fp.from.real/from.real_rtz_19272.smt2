(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 6309.0 850705917302346158658436518579420528640000.0))))
;; w should be Float32(0x0050C154 [Rational(1323093, 178405961588244985132285746181186892047843328), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
