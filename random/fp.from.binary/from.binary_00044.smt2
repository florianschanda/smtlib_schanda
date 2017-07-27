(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10000101011001011100000)))
;; x should be Float32(0x0042B2E0 [Rational(136599, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00000000010000101011001011100000

(assert (not (= y #b00000000010000101011001011100000)))
(check-sat)
(exit)
