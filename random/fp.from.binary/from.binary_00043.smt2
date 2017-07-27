(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000010000101011001011100000))
;; x should be 42b2e0

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x0042B2E0 [Rational(136599, 22300745198530623141535718272648361505980416), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b10000101011001011100000))))
(check-sat)
(exit)
