(set-info :source "Generated by Martin Brain on 2017-09-11 17:03:56+01:00 from revision 3122, file edge-cases.cpp (e9e19ccafc765b17a02ad5b1823da64784bdb15f6a6f20b565946f120425794c01655acf4691d527ae598c5ed453a1d66c9a6ec8728a695adf9acfc5091b43c9  edge-cases.cpp), benchmark divide_underflow_3_unsat using cbmc revision 6561 command /home/martin/working-copies/cbmc-subversion/src/cbmc//cbmc --slice-formula --smt2 --fpa --outfile tmp.smt2 --function divide_underflow_3_unsat --round-to-minus-inf edge-cases.cpp")
(set-logic QF_ABVFP)
(set-info :status unsat)
; SMT 2

; find_symbols
(declare-fun |goto_symex::&92;guard#1| () Bool)
; convert
(define-fun |B0| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B1| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B2| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B3| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B4| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B5| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B6| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B7| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B8| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B9| () Bool |goto_symex::&92;guard#1|)

; find_symbols
(declare-fun |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2| () Bool)
; convert
(define-fun |B10| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B11| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B12| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B13| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B14| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B15| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B16| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B17| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B18| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; convert
(define-fun |B19| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)))

; find_symbols
(declare-fun |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$1!0@1#2| () Bool)
; convert
(define-fun |B20| () Bool (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|) (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$1!0@1#2|)))

; find_symbols
(declare-fun |nondet_symex::nondet0| () (_ FloatingPoint 8 24))
; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::f@1#1| () (_ FloatingPoint 8 24) |nondet_symex::nondet0|)

; find_symbols
(declare-fun |nondet_symex::nondet1| () (_ FloatingPoint 8 24))
; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::g@1#1| () (_ FloatingPoint 8 24) |nondet_symex::nondet1|)

; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::fbound@1#2| () Bool (fp.geq |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::f@1#1| (fp #b0 #b01101001 #b00000000000000000000000)))

; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::gpos@1#2| () Bool (fp.gt |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::g@1#1| (fp #b0 #b00000000 #b00000000000000000000000)))

; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::div@1#2| () (_ FloatingPoint 8 24) (fp.div roundNearestTiesToEven |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::f@1#1| |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::g@1#1|))

; set_to true (equal)
(define-fun |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::divpos@1#2| () Bool (fp.gt |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::div@1#2| (fp #b0 #b00000000 #b00000000000000000000000)))

; set_to true
(assert (= |goto_symex::&92;guard#1| (not (or (not |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::fbound@1#2|) (not |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::gpos@1#2|)))))

; set_to true (equal)
(define-fun |smtlib_isInfinite::smtlib_isInfinite(float)::f@1#1| () (_ FloatingPoint 8 24) |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::f@1#1|)

; the following is a substitute for a string
(declare-fun string.0 () (Array (_ BitVec 64) (_ BitVec 8)))
(assert (= (select string.0(_ bv0 64)) (_ bv102 8)))
(assert (= (select string.0(_ bv1 64)) (_ bv112 8)))
(assert (= (select string.0(_ bv2 64)) (_ bv46 8)))
(assert (= (select string.0(_ bv3 64)) (_ bv105 8)))
(assert (= (select string.0(_ bv4 64)) (_ bv115 8)))
(assert (= (select string.0(_ bv5 64)) (_ bv73 8)))
(assert (= (select string.0(_ bv6 64)) (_ bv110 8)))
(assert (= (select string.0(_ bv7 64)) (_ bv102 8)))
(assert (= (select string.0(_ bv8 64)) (_ bv105 8)))
(assert (= (select string.0(_ bv9 64)) (_ bv110 8)))
(assert (= (select string.0(_ bv10 64)) (_ bv105 8)))
(assert (= (select string.0(_ bv11 64)) (_ bv116 8)))
(assert (= (select string.0(_ bv12 64)) (_ bv101 8)))
(assert (= (select string.0(_ bv13 64)) (_ bv0 8)))
; set_to true (equal)
(define-fun |smtlib_isInfinite(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isInfinite$1!0@1#2| () Bool ( fp.isInfinite |smtlib_isInfinite::smtlib_isInfinite(float)::f@1#1| ) )

; set_to true (equal)
(define-fun |smtlib_isInfinite(float)#return_value!0#1| () Bool |smtlib_isInfinite(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isInfinite$1!0@1#2|)

; set_to true
(assert (= |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2| |smtlib_isInfinite(float)#return_value!0#1|))

; set_to true (equal)
(define-fun |smtlib_isInfinite::smtlib_isInfinite(float)::f@2#1| () (_ FloatingPoint 8 24) |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::g@1#1|)

; set_to true (equal)
(define-fun |smtlib_isInfinite(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isInfinite$1!0@2#2| () Bool ( fp.isInfinite |smtlib_isInfinite::smtlib_isInfinite(float)::f@2#1| ) )

; set_to true (equal)
(define-fun |smtlib_isInfinite(float)#return_value!0#3| () Bool |smtlib_isInfinite(float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_isInfinite$1!0@2#2|)

; set_to true
(assert (= |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$1!0@1#2| |smtlib_isInfinite(float)#return_value!0#3|))

; set_to false
(assert (not (=> (and |goto_symex::&92;guard#1| (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|) (not |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$1!0@1#2|)) |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::divpos@1#2|)))

; convert
(define-fun |B21| () Bool (or (not |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::fbound@1#2|) (not |divide_underflow_3_unsat::divide_underflow_3_unsat(float,float)::1::gpos@1#2|)))

; convert
(define-fun |B22| () Bool |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$2!0@1#2|)

; convert
(define-fun |B23| () Bool |divide_underflow_3_unsat(float,float)::$tmp::return_value_smtlib_isInfinite$1!0@1#2|)

(check-sat)


(exit)
; end of SMT2 file
