(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805ACF24)))
;; x should be Float32(0x805ACF24 [Rational(-1487817, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10000000010110101100111100100100

(assert (not (= y #b10000000010110101100111100100100)))
(check-sat)
(exit)
