(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01011001100001100011100)))
;; x should be Float32(0x802CC31C [Rational(-733383, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11000010 #b11011000110010001100010)))
;; y should be Float32(0xE16C6462 [Rational(-272541559084185288704), -272541559084185288704.000000])

(declare-const z Float32)
(assert (= z (_ NaN 8 24)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
