(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000001101011111111111011100))
;; x should be 8035ffdc

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x8035FFDC [Rational(-884727, 178405961588244985132285746181186892047843328), -0.000000])

(assert (= y (fp #b1 #b00000000 #b01101011111111111011100)))
(check-sat)
(exit)
