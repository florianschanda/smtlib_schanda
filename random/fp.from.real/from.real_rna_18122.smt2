(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000110 #b01111110110010000101010)))
;; x should be Float32(0x833F642A [Rational(-6271509, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 250860370367.0 446014903970612462830714365452967230119608320000.0)))))
;; w should be Float32(0x833F642B [Rational(-12543019, 22300745198530623141535718272648361505980416), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
