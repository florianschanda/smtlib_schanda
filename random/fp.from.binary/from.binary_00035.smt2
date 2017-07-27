(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01100000010000100110010111101011))
;; x should be 604265eb

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x604265EB [Rational(56031442404953292800), 56031442404953292800.000000])

(assert (not (= y (fp #b0 #b11000000 #b10000100110010111101011))))
(check-sat)
(exit)
